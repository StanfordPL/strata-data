  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  xorq %rax, %rax          #  1     0     3      OPC=xorq_r64_r64    
  setpo %ah                #  2     0x3   3      OPC=setpo_rh        
  callq .read_of_into_rcx  #  3     0x6   5      OPC=callq_label     
  movzbq %cl, %r9          #  4     0xb   4      OPC=movzbq_r64_r8   
  movswl %r9w, %r11d       #  5     0xf   4      OPC=movswl_r32_r16  
  addw %cx, %ax            #  6     0x13  3      OPC=addw_r16_r16    
  adcw %r11w, %bx          #  7     0x16  4      OPC=adcw_r16_r16    
  adcq %rbx, %rbx          #  8     0x1a  3      OPC=adcq_r64_r64    
  retq                     #  9     0x1d  1      OPC=retq            
                                                                     
.size target, .-target
