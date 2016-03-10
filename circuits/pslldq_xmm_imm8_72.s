  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode             
.target:                               #        0     0      OPC=<label>        
  subps %xmm1, %xmm1                   #  1     0     3      OPC=subps_xmm_xmm  
  pandn %xmm1, %xmm1                   #  2     0x3   4      OPC=pandn_xmm_xmm  
  callq .move_128_64_xmm1_xmm10_xmm11  #  3     0x7   5      OPC=callq_label    
  mulpd %xmm11, %xmm1                  #  4     0xc   5      OPC=mulpd_xmm_xmm  
  retq                                 #  5     0x11  1      OPC=retq           
                                                                                
.size target, .-target
