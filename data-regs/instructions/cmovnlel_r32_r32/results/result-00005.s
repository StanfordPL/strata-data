  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  setng %dil          #  1     0    4      OPC=setng_r8         
  movl %ecx, %eax     #  2     0x4  2      OPC=movl_r32_r32     
  cmovnsl %eax, %eax  #  3     0x6  3      OPC=cmovnsl_r32_r32  
  addb %dil, %dil     #  4     0x9  3      OPC=addb_r8_r8       
  cmovel %eax, %ebx   #  5     0xc  3      OPC=cmovel_r32_r32   
  retq                #  6     0xf  1      OPC=retq             
                                                                
.size target, .-target
