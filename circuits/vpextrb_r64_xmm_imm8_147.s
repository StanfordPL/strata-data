  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP  Bytes  Opcode             
.target:                          #        0    0      OPC=<label>        
  callq .move_128_064_xmm1_r8_r9  #  1     0    5      OPC=callq_label    
  bswap %r8d                      #  2     0x5  3      OPC=bswap_r32      
  movzbl %r8b, %ebx               #  3     0x8  4      OPC=movzbl_r32_r8  
  retq                            #  4     0xc  1      OPC=retq           
                                                                          
.size target, .-target
