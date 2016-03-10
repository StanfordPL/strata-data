  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode             
.target:                                        #        0     0      OPC=<label>        
  callq .move_128_064_xmm2_r8_r9                #  1     0     5      OPC=callq_label    
  callq .move_128_032_xmm3_r10d_r11d_r12d_r13d  #  2     0x5   5      OPC=callq_label    
  callq .move_032_064_r10d_r11d_rcx             #  3     0xa   5      OPC=callq_label    
  vzeroall                                      #  4     0xf   3      OPC=vzeroall       
  xchgq %rcx, %r8                               #  5     0x12  3      OPC=xchgq_r64_r64  
  callq .move_064_128_r8_r9_xmm1                #  6     0x15  5      OPC=callq_label    
  retq                                          #  7     0x1a  1      OPC=retq           
                                                                                         
.size target, .-target
