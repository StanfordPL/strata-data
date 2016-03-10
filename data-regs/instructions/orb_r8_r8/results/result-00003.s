  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  xorq %rax, %rax   #  1     0    3      OPC=xorq_r64_r64    
  movswq %ax, %rdx  #  2     0x3  4      OPC=movswq_r64_r16  
  xaddb %cl, %dh    #  3     0x7  3      OPC=xaddb_rh_r8     
  xchgb %ah, %dh    #  4     0xa  2      OPC=xchgb_rh_rh     
  orb %ah, %bl      #  5     0xc  2      OPC=orb_r8_rh       
  retq              #  6     0xe  1      OPC=retq            
                                                             
.size target, .-target
