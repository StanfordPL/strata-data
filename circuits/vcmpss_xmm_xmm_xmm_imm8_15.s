  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                    
.target:                            #        0     0      OPC=<label>               
  callq .move_128_064_xmm2_r12_r13  #  1     0     5      OPC=callq_label           
  vzeroall                          #  2     0x5   3      OPC=vzeroall              
  callq .move_128_064_xmm2_r8_r9    #  3     0x8   5      OPC=callq_label           
  decl %r9d                         #  4     0xd   3      OPC=decl_r32              
  vmovd %r9d, %xmm1                 #  5     0x10  5      OPC=vmovd_xmm_r32         
  callq .move_064_128_r12_r13_xmm3  #  6     0x15  5      OPC=callq_label           
  vrsqrtss %xmm1, %xmm3, %xmm1      #  7     0x1a  4      OPC=vrsqrtss_xmm_xmm_xmm  
  retq                              #  8     0x1e  1      OPC=retq                  
                                                                                    
.size target, .-target
