  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP   Bytes  Opcode              
.target:              #        0     0      OPC=<label>         
  cmpb %bl, %al       #  1     0     2      OPC=cmpb_r8_r8      
  setnl %ch           #  2     0x2   4      OPC=setnl_rh        
  movzwq %cx, %r13    #  3     0x6   4      OPC=movzwq_r64_r16  
  movzbw %bl, %ax     #  4     0xa   4      OPC=movzbw_r16_r8   
  cmovel %r13d, %ebx  #  5     0xe   4      OPC=cmovel_r32_r32  
  retq                #  6     0x12  1      OPC=retq            
                                                                
.size target, .-target
