  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  movzbq %cl, %rax    #  1     0    4      OPC=movzbq_r64_r8    
  setge %dh           #  2     0x4  3      OPC=setge_rh         
  xaddl %eax, %ecx    #  3     0x7  3      OPC=xaddl_r32_r32    
  negb %dh            #  4     0xa  2      OPC=negb_rh          
  cmovael %eax, %ebx  #  5     0xc  3      OPC=cmovael_r32_r32  
  retq                #  6     0xf  1      OPC=retq             
                                                                
.size target, .-target
