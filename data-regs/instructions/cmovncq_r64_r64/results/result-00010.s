  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                #  Line  RIP  Bytes  Opcode                
.target:              #        0    0      OPC=<label>           
  cmovaeq %rcx, %rbx  #  1     0    4      OPC=cmovaeq_r64_r64   
  xorb %ch, %ch       #  2     0x4  2      OPC=xorb_rh_rh        
  cmovnbew %bx, %bx   #  3     0x6  4      OPC=cmovnbew_r16_r16  
  retq                #  4     0xa  1      OPC=retq              
                                                                 
.size target, .-target
