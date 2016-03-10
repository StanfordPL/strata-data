  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP   Bytes  Opcode               
.target:              #        0     0      OPC=<label>          
  callq .set_pf       #  1     0     5      OPC=callq_label      
  movl %ecx, %ecx     #  2     0x5   2      OPC=movl_r32_r32     
  setnge %bpl         #  3     0x7   4      OPC=setnge_r8        
  cmovnpl %ebx, %ebx  #  4     0xb   3      OPC=cmovnpl_r32_r32  
  shlb $0x1, %bpl     #  5     0xe   3      OPC=shlb_r8_one      
  cmoveq %rcx, %rbx   #  6     0x11  4      OPC=cmoveq_r64_r64   
  retq                #  7     0x15  1      OPC=retq             
                                                                 
.size target, .-target
