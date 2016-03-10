  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  cmovaeq %rbx, %rcx  #  1     0    4      OPC=cmovaeq_r64_r64  
  salb $0x1, %bh      #  2     0x4  2      OPC=salb_rh_one      
  xchgq %rbx, %rcx    #  3     0x6  3      OPC=xchgq_r64_r64    
  retq                #  4     0x9  1      OPC=retq             
                                                                
.size target, .-target
