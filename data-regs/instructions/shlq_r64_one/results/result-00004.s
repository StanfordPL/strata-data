  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  movq $0x1, %r8                    #  1     0     10     OPC=movq_r64_imm64  
  callq .move_016_008_bx_r8b_r9b    #  2     0xa   5      OPC=callq_label     
  movzbl %r9b, %r10d                #  3     0xf   4      OPC=movzbl_r32_r8   
  xorw %cx, %cx                     #  4     0x13  3      OPC=xorw_r16_r16    
  setnbe %al                        #  5     0x16  3      OPC=setnbe_r8       
  movw %r10w, %cx                   #  6     0x19  4      OPC=movw_r16_r16    
  callq .move_016_008_cx_r10b_r11b  #  7     0x1d  5      OPC=callq_label     
  xorw %r8w, %r10w                  #  8     0x22  4      OPC=xorw_r16_r16    
  xaddb %al, %r10b                  #  9     0x26  4      OPC=xaddb_r8_r8     
  adcq %rbx, %rbx                   #  10    0x2a  3      OPC=adcq_r64_r64    
  retq                              #  11    0x2d  1      OPC=retq            
                                                                              
.size target, .-target
