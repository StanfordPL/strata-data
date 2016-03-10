  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  testb %bl, %bl    #  1     0    2      OPC=testb_r8_r8     
  movzbq %bl, %rdi  #  2     0x2  4      OPC=movzbq_r64_r8   
  movswq %di, %rbx  #  3     0x6  4      OPC=movswq_r64_r16  
  sbbb %bl, %ah     #  4     0xa  2      OPC=sbbb_rh_r8      
  retq              #  5     0xc  1      OPC=retq            
                                                             
.size target, .-target
