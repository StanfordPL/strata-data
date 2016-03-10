  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  movq $0x40, %rbx         #  1     0     10     OPC=movq_r64_imm64  
  shlb $0x1, %bh           #  2     0xa   2      OPC=shlb_rh_one     
  callq .read_sf_into_rbx  #  3     0xc   5      OPC=callq_label     
  shlw $0x1, %bx           #  4     0x11  3      OPC=shlw_r16_one    
  movsbl %cl, %edi         #  5     0x14  3      OPC=movsbl_r32_r8   
  movswq %di, %rdx         #  6     0x17  4      OPC=movswq_r64_r16  
  adcl %edx, %ebx          #  7     0x1b  2      OPC=adcl_r32_r32    
  retq                     #  8     0x1d  1      OPC=retq            
                                                                     
.size target, .-target
