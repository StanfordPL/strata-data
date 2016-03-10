  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text               #  Line  RIP   Bytes  Opcode              
.target:             #        0     0      OPC=<label>         
  xorq %rax, %rax    #  1     0     3      OPC=xorq_r64_r64    
  movq $0x1, %rax    #  2     0x3   10     OPC=movq_r64_imm64  
  movslq %eax, %rsi  #  3     0xd   3      OPC=movslq_r64_r32  
  movsbl %sil, %edx  #  4     0x10  4      OPC=movsbl_r32_r8   
  adcb %al, %dl      #  5     0x14  2      OPC=adcb_r8_r8      
  adcb %al, %bl      #  6     0x16  2      OPC=adcb_r8_r8      
  retq               #  7     0x18  1      OPC=retq            
                                                               
.size target, .-target
