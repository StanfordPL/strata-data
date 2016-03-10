  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  movzwl %cx, %r11d        #  1     0     4      OPC=movzwl_r32_r16  
  xchgl %r11d, %ebx        #  2     0x4   3      OPC=xchgl_r32_r32   
  rolq $0x1, %rbx          #  3     0x7   3      OPC=rolq_r64_one    
  callq .read_of_into_rbx  #  4     0xa   5      OPC=callq_label     
  xaddl %ecx, %ebx         #  5     0xf   3      OPC=xaddl_r32_r32   
  adcq %rcx, %r11          #  6     0x12  3      OPC=adcq_r64_r64    
  xorq %r11, %rbx          #  7     0x15  3      OPC=xorq_r64_r64    
  callq .set_szp_for_ebx   #  8     0x18  5      OPC=callq_label     
  retq                     #  9     0x1d  1      OPC=retq            
                                                                     
.size target, .-target
