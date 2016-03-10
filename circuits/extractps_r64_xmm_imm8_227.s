  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  vpunpckhdq %xmm1, %xmm1, %xmm0       #  1     0     4      OPC=vpunpckhdq_xmm_xmm_xmm  
  movsldup %xmm0, %xmm1                #  2     0x4   4      OPC=movsldup_xmm_xmm        
  callq .move_128_64_xmm1_xmm10_xmm11  #  3     0x8   5      OPC=callq_label             
  vmovd %xmm11, %ebx                   #  4     0xd   4      OPC=vmovd_r32_xmm           
  retq                                 #  5     0x11  1      OPC=retq                    
                                                                                         
.size target, .-target
