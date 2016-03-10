  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.target:                   #        0     0      OPC=<label>        
  movzbl %ah, %ebp         #  1     0     3      OPC=movzbl_r32_rh  
  shlb $0x1, %bpl          #  2     0x3   3      OPC=shlb_r8_one    
  callq .read_of_into_rbx  #  3     0x6   5      OPC=callq_label    
  xchgl %ebp, %ebx         #  4     0xb   2      OPC=xchgl_r32_r32  
  movb %bl, %bh            #  5     0xd   2      OPC=movb_rh_r8     
  movq %rbx, %rax          #  6     0xf   3      OPC=movq_r64_r64   
  retq                     #  7     0x12  1      OPC=retq           
                                                                    
.size target, .-target
