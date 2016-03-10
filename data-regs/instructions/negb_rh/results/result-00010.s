  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                            #  Line  RIP   Bytes  Opcode               
.target:                          #        0     0      OPC=<label>          
  movq $0xffffffffffffffe0, %r14  #  1     0     10     OPC=movq_r64_imm64   
  popcntq %r14, %rsi              #  2     0xa   5      OPC=popcntq_r64_r64  
  rolw $0x1, %r14w                #  3     0xf   4      OPC=rolw_r16_one     
  notb %ah                        #  4     0x13  2      OPC=notb_rh          
  cmc                             #  5     0x15  1      OPC=cmc              
  setnle %ch                      #  6     0x16  3      OPC=setnle_rh        
  adcb %ch, %ah                   #  7     0x19  2      OPC=adcb_rh_rh       
  cmc                             #  8     0x1b  1      OPC=cmc              
  retq                            #  9     0x1c  1      OPC=retq             
                                                                             
.size target, .-target
