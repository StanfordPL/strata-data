  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  shlq $0x1, %rax   #  1     0    3      OPC=shlq_r64_one   
  sbbb %ah, %ah     #  2     0x3  2      OPC=sbbb_rh_rh     
  cwtd              #  3     0x5  2      OPC=cwtd           
  movsbq %dl, %rdx  #  4     0x7  4      OPC=movsbq_r64_r8  
  retq              #  5     0xb  1      OPC=retq           
                                                            
.size target, .-target
