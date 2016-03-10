  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  callq .move_128_64_xmm3_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  movsldup %xmm3, %xmm7                #  2     0x5   4      OPC=movsldup_xmm_xmm        
  vpunpckhdq %xmm2, %xmm7, %xmm2       #  3     0x9   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vmovsd %xmm10, %xmm2, %xmm1          #  4     0xd   5      OPC=vmovsd_xmm_xmm_xmm      
  retq                                 #  5     0x12  1      OPC=retq                    
                                                                                         
.size target, .-target
