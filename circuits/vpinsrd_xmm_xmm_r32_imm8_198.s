  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  movd %ebx, %xmm1                     #  1     0     4      OPC=movd_xmm_r32            
  punpckldq %xmm1, %xmm1               #  2     0x4   4      OPC=punpckldq_xmm_xmm       
  callq .move_128_64_xmm2_xmm10_xmm11  #  3     0x8   5      OPC=callq_label             
  vpunpckldq %xmm11, %xmm1, %xmm13     #  4     0xd   5      OPC=vpunpckldq_xmm_xmm_xmm  
  vmovsd %xmm2, %xmm13, %xmm1          #  5     0x12  4      OPC=vmovsd_xmm_xmm_xmm      
  retq                                 #  6     0x16  1      OPC=retq                    
                                                                                         
.size target, .-target
