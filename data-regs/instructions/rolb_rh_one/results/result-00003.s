  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP   Bytes  Opcode              
.target:            #        0     0      OPC=<label>         
  xorb %al, %al     #  1     0     2      OPC=xorb_r8_r8      
  movswq %ax, %rcx  #  2     0x2   4      OPC=movswq_r64_r16  
  setne %ah         #  3     0x6   3      OPC=setne_rh        
  xaddb %cl, %ch    #  4     0x9   3      OPC=xaddb_rh_r8     
  decb %al          #  5     0xc   2      OPC=decb_r8         
  rolw $0x1, %cx    #  6     0xe   3      OPC=rolw_r16_one    
  xchgw %ax, %cx    #  7     0x11  2      OPC=xchgw_r16_ax    
  retq              #  8     0x13  1      OPC=retq            
                                                              
.size target, .-target
