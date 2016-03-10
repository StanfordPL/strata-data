  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode              
.target:                                        #        0     0      OPC=<label>         
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  1     0     5      OPC=callq_label     
  movq $0xffffffffffffffc0, %rbx                #  2     0x5   10     OPC=movq_r64_imm64  
  negb %bh                                      #  3     0xf   2      OPC=negb_rh         
  subw %bx, %bx                                 #  4     0x11  3      OPC=subw_r16_r16    
  xaddl %ebx, %r13d                             #  5     0x14  4      OPC=xaddl_r32_r32   
  retq                                          #  6     0x18  1      OPC=retq            
                                                                                          
.size target, .-target
