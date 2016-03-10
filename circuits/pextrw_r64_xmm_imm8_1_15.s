  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode             
.target:                                        #        0     0      OPC=<label>        
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  1     0     5      OPC=callq_label    
  callq .move_byte_14_of_ymm1_to_r9b            #  2     0x5   5      OPC=callq_label    
  movsbw %r9b, %r12w                            #  3     0xa   5      OPC=movsbw_r16_r8  
  movzbq %r10b, %rbx                            #  4     0xf   4      OPC=movzbq_r64_r8  
  bswap %r13d                                   #  5     0x13  3      OPC=bswap_r32      
  callq .move_008_016_r12b_r13b_bx              #  6     0x16  5      OPC=callq_label    
  retq                                          #  7     0x1b  1      OPC=retq           
                                                                                         
.size target, .-target
