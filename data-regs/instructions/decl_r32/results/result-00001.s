  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                #  Line  RIP  Bytes  Opcode             
.target:              #        0    0      OPC=<label>        
  xorb %r10b, %r10b   #  1     0    3      OPC=xorb_r8_r8     
  decb %r10b          #  2     0x3  3      OPC=decb_r8        
  movsbq %r10b, %rdx  #  3     0x6  4      OPC=movsbq_r64_r8  
  addq %rdx, %rdx     #  4     0xa  3      OPC=addq_r64_r64   
  adcl %edx, %ebx     #  5     0xd  2      OPC=adcl_r32_r32   
  retq                #  6     0xf  1      OPC=retq           
                                                              
.size target, .-target
