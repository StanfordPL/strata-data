  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP  Bytes  Opcode            
.target:           #        0    0      OPC=<label>       
  setno %bh        #  1     0    3      OPC=setno_rh      
  xorq %rax, %rax  #  2     0x3  3      OPC=xorq_r64_r64  
  addb %bh, %ah    #  3     0x6  2      OPC=addb_rh_rh    
  setz %ah         #  4     0x8  3      OPC=setz_rh       
  retq             #  5     0xb  1      OPC=retq          
                                                          
.size target, .-target
