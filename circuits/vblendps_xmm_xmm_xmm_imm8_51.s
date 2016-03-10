  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode             
.target:                            #        0     0      OPC=<label>        
  callq .move_128_064_xmm3_r12_r13  #  1     0     5      OPC=callq_label    
  callq .move_128_064_xmm2_r8_r9    #  2     0x5   5      OPC=callq_label    
  vzeroall                          #  3     0xa   3      OPC=vzeroall       
  addb %r12b, %r13b                 #  4     0xd   3      OPC=addb_r8_r8     
  callq .move_064_128_r8_r9_xmm1    #  5     0x10  5      OPC=callq_label    
  callq .move_064_128_r12_r13_xmm3  #  6     0x15  5      OPC=callq_label    
  movsd %xmm3, %xmm1                #  7     0x1a  4      OPC=movsd_xmm_xmm  
  retq                              #  8     0x1e  1      OPC=retq           
                                                                             
.size target, .-target
