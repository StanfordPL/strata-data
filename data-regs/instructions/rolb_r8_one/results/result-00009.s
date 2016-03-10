  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movq $0xffffffffffffffe0, %r13  #  1     0     10     OPC=movq_r64_imm64  
  movsbq %bl, %r8                 #  2     0xa   4      OPC=movsbq_r64_r8   
  xorw %r13w, %r13w               #  3     0xe   4      OPC=xorw_r16_r16    
  addq %r13, %r8                  #  4     0x12  3      OPC=addq_r64_r64    
  adcb %bl, %bl                   #  5     0x15  2      OPC=adcb_r8_r8      
  retq                            #  6     0x17  1      OPC=retq            
                                                                            
.size target, .-target
