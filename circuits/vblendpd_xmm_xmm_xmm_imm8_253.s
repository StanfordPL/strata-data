  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode             
.target:                            #        0     0      OPC=<label>        
  callq .move_128_064_xmm2_r10_r11  #  1     0     5      OPC=callq_label    
  bswap %r10d                       #  2     0x5   3      OPC=bswap_r32      
  callq .move_128_064_xmm3_r12_r13  #  3     0x8   5      OPC=callq_label    
  vzeroall                          #  4     0xd   3      OPC=vzeroall       
  decw %r10w                        #  5     0x10  4      OPC=decw_r16       
  xchgq %r12, %r10                  #  6     0x14  3      OPC=xchgq_r64_r64  
  callq .move_064_128_r10_r11_xmm1  #  7     0x17  5      OPC=callq_label    
  retq                              #  8     0x1c  1      OPC=retq           
                                                                             
.size target, .-target
