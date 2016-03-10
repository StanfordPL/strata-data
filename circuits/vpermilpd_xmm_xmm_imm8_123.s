  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                 
.target:                            #        0     0      OPC=<label>            
  callq .move_128_064_xmm2_r10_r11  #  1     0     5      OPC=callq_label        
  andnl %r10d, %r10d, %r15d         #  2     0x5   5      OPC=andnl_r32_r32_r32  
  vzeroall                          #  3     0xa   3      OPC=vzeroall           
  cmovngq %r11, %r10                #  4     0xd   4      OPC=cmovngq_r64_r64    
  callq .move_064_128_r10_r11_xmm1  #  5     0x11  5      OPC=callq_label        
  retq                              #  6     0x16  1      OPC=retq               
                                                                                 
.size target, .-target
