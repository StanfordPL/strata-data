  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode               
.target:                                        #        0     0      OPC=<label>          
  callq .move_128_064_xmm2_r8_r9                #  1     0     5      OPC=callq_label      
  callq .move_128_032_xmm2_r10d_r11d_r12d_r13d  #  2     0x5   5      OPC=callq_label      
  xchgq %r9, %r8                                #  3     0xa   3      OPC=xchgq_r64_r64    
  vzeroall                                      #  4     0xd   3      OPC=vzeroall         
  sarl $0x1, %r11d                              #  5     0x10  3      OPC=sarl_r32_one     
  cmovnzq %r9, %r9                              #  6     0x13  4      OPC=cmovnzq_r64_r64  
  callq .move_064_128_r8_r9_xmm1                #  7     0x17  5      OPC=callq_label      
  retq                                          #  8     0x1c  1      OPC=retq             
                                                                                           
.size target, .-target
