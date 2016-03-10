  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode              
.target:                                        #        0     0      OPC=<label>         
  movq $0x40, %rbx                              #  1     0     10     OPC=movq_r64_imm64  
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  2     0xa   5      OPC=callq_label     
  subw %bx, %bx                                 #  3     0xf   3      OPC=subw_r16_r16    
  subb %bh, %bh                                 #  4     0x12  2      OPC=subb_rh_rh      
  xaddb %r11b, %bl                              #  5     0x14  4      OPC=xaddb_r8_r8     
  retq                                          #  6     0x18  1      OPC=retq            
                                                                                          
.size target, .-target
