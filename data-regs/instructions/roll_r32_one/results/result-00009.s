  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  callq .clear_cf    #  1     0    5      OPC=callq_label     
  movslq %ebx, %r10  #  2     0x5  3      OPC=movslq_r64_r32  
  adcl %ebx, %r10d   #  3     0x8  3      OPC=adcl_r32_r32    
  rcll $0x1, %ebx    #  4     0xb  2      OPC=rcll_r32_one    
  retq               #  5     0xd  1      OPC=retq            
                                                              
.size target, .-target
