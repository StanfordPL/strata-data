  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movsbl %bl, %esp  #  1     0    3      OPC=movsbl_r32_r8  
  movsbl %ah, %ebx  #  2     0x3  3      OPC=movsbl_r32_rh  
  andl %esp, %ebx   #  3     0x6  2      OPC=andl_r32_r32   
  retq              #  4     0x8  1      OPC=retq           
                                                            
.size target, .-target
