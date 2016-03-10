  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP  Bytes  Opcode              
.target:              #        0    0      OPC=<label>         
  movzbl %bh, %eax    #  1     0    3      OPC=movzbl_r32_rh   
  setno %al           #  2     0x3  3      OPC=setno_r8        
  orl %eax, %eax      #  3     0x6  2      OPC=orl_r32_r32     
  movslq %ecx, %r15   #  4     0x8  3      OPC=movslq_r64_r32  
  cmovel %r15d, %ebx  #  5     0xb  4      OPC=cmovel_r32_r32  
  retq                #  6     0xf  1      OPC=retq            
                                                               
.size target, .-target
