  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  xorq %rax, %rax          #  1     0     3      OPC=xorq_r64_r64    
  callq .read_zf_into_rcx  #  2     0x3   5      OPC=callq_label     
  movq $0x1, %rsi          #  3     0x8   10     OPC=movq_r64_imm64  
  orq %rsi, %rsi           #  4     0x12  3      OPC=orq_r64_r64     
  adcw %bx, %cx            #  5     0x15  3      OPC=adcw_r16_r16    
  movslq %ecx, %rbx        #  6     0x18  3      OPC=movslq_r64_r32  
  retq                     #  7     0x1b  1      OPC=retq            
                                                                     
.size target, .-target
