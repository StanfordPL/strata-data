  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode              
.target:                                        #        0     0      OPC=<label>         
  movq $0xffffffffffffffff, %rbx                #  1     0     10     OPC=movq_r64_imm64  
  rolb $0x1, %bh                                #  2     0xa   2      OPC=rolb_rh_one     
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  3     0xc   5      OPC=callq_label     
  adcb %bh, %bh                                 #  4     0x11  2      OPC=adcb_rh_rh      
  xchgl %ebx, %r10d                             #  5     0x13  3      OPC=xchgl_r32_r32   
  retq                                          #  6     0x16  1      OPC=retq            
                                                                                          
.size target, .-target
