  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP   Bytes  Opcode            
.target:           #        0     0      OPC=<label>       
  xorq %rax, %rax  #  1     0     3      OPC=xorq_r64_r64  
  setpe %ch        #  2     0x3   3      OPC=setpe_rh      
  setae %ah        #  3     0x6   3      OPC=setae_rh      
  xaddb %ah, %ah   #  4     0x9   3      OPC=xaddb_rh_rh   
  xchgb %ch, %cl   #  5     0xc   2      OPC=xchgb_r8_rh   
  sbbb %ch, %bl    #  6     0xe   2      OPC=sbbb_r8_rh    
  retq             #  7     0x10  1      OPC=retq          
                                                           
.size target, .-target
