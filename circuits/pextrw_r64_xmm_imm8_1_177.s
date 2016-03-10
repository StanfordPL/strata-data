  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                 
.target:                            #        0     0      OPC=<label>            
  vpmovzxwq %xmm1, %xmm3            #  1     0     5      OPC=vpmovzxwq_xmm_xmm  
  callq .move_128_064_xmm3_r10_r11  #  2     0x5   5      OPC=callq_label        
  callq .move_128_064_xmm1_r8_r9    #  3     0xa   5      OPC=callq_label        
  sarb $0x1, %r9b                   #  4     0xf   3      OPC=sarb_r8_one        
  callq .read_of_into_rbx           #  5     0x12  5      OPC=callq_label        
  subl %r10d, %r8d                  #  6     0x17  3      OPC=subl_r32_r32       
  popcntw %r8w, %bx                 #  7     0x1a  6      OPC=popcntw_r16_r16    
  xaddl %ebx, %r11d                 #  8     0x20  4      OPC=xaddl_r32_r32      
  retq                              #  9     0x24  1      OPC=retq               
                                                                                 
.size target, .-target
