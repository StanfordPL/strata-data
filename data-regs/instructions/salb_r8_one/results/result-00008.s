  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movsbq %bl, %rsi  #  1     0    4      OPC=movsbq_r64_r8  
  movl %esi, %ebx   #  2     0x4  2      OPC=movl_r32_r32   
  shlb $0x1, %bl    #  3     0x6  2      OPC=shlb_r8_one    
  retq              #  4     0x8  1      OPC=retq           
                                                            
.size target, .-target
