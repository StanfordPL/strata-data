  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode               
.target:                                        #        0     0      OPC=<label>          
  xorb %bh, %bh                                 #  1     0     2      OPC=xorb_rh_rh       
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  2     0x2   5      OPC=callq_label      
  movq $0x2, %rbx                               #  3     0x7   10     OPC=movq_r64_imm64   
  cmovpel %r13d, %ebx                           #  4     0x11  4      OPC=cmovpel_r32_r32  
  retq                                          #  5     0x15  1      OPC=retq             
                                                                                           
.size target, .-target
