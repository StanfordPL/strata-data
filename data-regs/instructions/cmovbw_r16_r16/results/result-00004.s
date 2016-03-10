  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                 #  Line  RIP   Bytes  Opcode                
.target:               #        0     0      OPC=<label>           
  movw %cx, %bp        #  1     0     3      OPC=movw_r16_r16      
  setnae %dil          #  2     0x3   4      OPC=setnae_r8         
  movzwq %bp, %rsp     #  3     0x7   4      OPC=movzwq_r64_r16    
  negb %dil            #  4     0xb   3      OPC=negb_r8           
  cmovngel %esp, %ebx  #  5     0xe   3      OPC=cmovngel_r32_r32  
  retq                 #  6     0x11  1      OPC=retq              
                                                                   
.size target, .-target
