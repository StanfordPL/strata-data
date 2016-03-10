  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                #  Line  RIP   Bytes  Opcode              
.target:              #        0     0      OPC=<label>         
  movq $0x6, %r13     #  1     0     10     OPC=movq_r64_imm64  
  movsbq %r13b, %r10  #  2     0xa   4      OPC=movsbq_r64_r8   
  xchgb %bl, %r10b    #  3     0xe   3      OPC=xchgb_r8_r8     
  movzbq %r10b, %rcx  #  4     0x11  4      OPC=movzbq_r64_r8   
  xchgb %ah, %cl      #  5     0x15  2      OPC=xchgb_r8_rh     
  cmpb %cl, %ah       #  6     0x17  2      OPC=cmpb_rh_r8      
  retq                #  7     0x19  1      OPC=retq            
                                                                
.size target, .-target
