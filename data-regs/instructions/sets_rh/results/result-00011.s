  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode               
.target:                   #        0     0      OPC=<label>          
  callq .read_sf_into_rbx  #  1     0     5      OPC=callq_label      
  popcntq %rbx, %r14       #  2     0x5   5      OPC=popcntq_r64_r64  
  movsbq %bl, %r8          #  3     0xa   4      OPC=movsbq_r64_r8    
  adcw %bx, %r8w           #  4     0xe   4      OPC=adcw_r16_r16     
  setnz %ah                #  5     0x12  3      OPC=setnz_rh         
  retq                     #  6     0x15  1      OPC=retq             
                                                                      
.size target, .-target
