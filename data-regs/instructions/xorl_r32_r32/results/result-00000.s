  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  movq $0xfffffffffffffffb, %r11     #  1     0     10     OPC=movq_r64_imm64  
  callq .move_032_016_ebx_r8w_r9w    #  2     0xa   5      OPC=callq_label     
  shlb $0x1, %r11b                   #  3     0xf   3      OPC=shlb_r8_one     
  callq .move_032_016_ecx_r12w_r13w  #  4     0x12  5      OPC=callq_label     
  xaddl %r11d, %ebx                  #  5     0x17  4      OPC=xaddl_r32_r32   
  xorw %r13w, %r9w                   #  6     0x1b  4      OPC=xorw_r16_r16    
  callq .move_016_032_r8w_r9w_ebx    #  7     0x1f  5      OPC=callq_label     
  xorw %r12w, %bx                    #  8     0x24  4      OPC=xorw_r16_r16    
  callq .set_szp_for_ebx             #  9     0x28  5      OPC=callq_label     
  retq                               #  10    0x2d  1      OPC=retq            
                                                                               
.size target, .-target
