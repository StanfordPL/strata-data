  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.target:                   #        0     0      OPC=<label>        
  callq .read_zf_into_rcx  #  1     0     5      OPC=callq_label    
  movzbq %cl, %r12         #  2     0x5   4      OPC=movzbq_r64_r8  
  xaddw %r12w, %cx         #  3     0x9   5      OPC=xaddw_r16_r16  
  adcw %cx, %r12w          #  4     0xe   4      OPC=adcw_r16_r16   
  setz %bl                 #  5     0x12  3      OPC=setz_r8        
  retq                     #  6     0x15  1      OPC=retq           
                                                                    
.size target, .-target
