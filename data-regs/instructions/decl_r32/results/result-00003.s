  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                #  Line  RIP  Bytes  Opcode              
.target:              #        0    0      OPC=<label>         
  xorq %r10, %r10     #  1     0    3      OPC=xorq_r64_r64    
  decw %r10w          #  2     0x3  4      OPC=decw_r16        
  movswq %r10w, %r15  #  3     0x7  4      OPC=movswq_r64_r16  
  adcl %r15d, %ebx    #  4     0xb  3      OPC=adcl_r32_r32    
  retq                #  5     0xe  1      OPC=retq            
                                                               
.size target, .-target
