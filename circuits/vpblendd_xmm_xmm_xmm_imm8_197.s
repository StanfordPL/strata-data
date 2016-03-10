  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  callq .move_128_64_xmm3_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  movss %xmm10, %xmm2                  #  2     0x5   5      OPC=movss_xmm_xmm           
  vbroadcastss %xmm11, %xmm6           #  3     0xa   5      OPC=vbroadcastss_xmm_xmm    
  vpunpckhdq %xmm2, %xmm6, %xmm1       #  4     0xf   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  movsd %xmm2, %xmm1                   #  5     0x13  4      OPC=movsd_xmm_xmm           
  retq                                 #  6     0x17  1      OPC=retq                    
                                                                                         
.size target, .-target
