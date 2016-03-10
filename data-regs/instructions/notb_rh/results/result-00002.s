  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  stc                             #  1     0     1      OPC=stc             
  movq $0xfffffffffffffffd, %r10  #  2     0x1   10     OPC=movq_r64_imm64  
  callq .read_cf_into_rcx         #  3     0xb   5      OPC=callq_label     
  adcq %r10, %rcx                 #  4     0x10  3      OPC=adcq_r64_r64    
  xorb %cl, %ah                   #  5     0x13  2      OPC=xorb_rh_r8      
  retq                            #  6     0x15  1      OPC=retq            
                                                                            
.size target, .-target
