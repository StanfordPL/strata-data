  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.target:                   #        0     0      OPC=<label>        
  callq .read_of_into_rcx  #  1     0     5      OPC=callq_label    
  setng %r8b               #  2     0x5   4      OPC=setng_r8       
  xaddw %cx, %cx           #  3     0x9   4      OPC=xaddw_r16_r16  
  setnae %dl               #  4     0xd   3      OPC=setnae_r8      
  xaddb %cl, %dl           #  5     0x10  3      OPC=xaddb_r8_r8    
  shlq $0x1, %rcx          #  6     0x13  3      OPC=shlq_r64_one   
  setno %bl                #  7     0x16  3      OPC=setno_r8       
  xchgb %bl, %r8b          #  8     0x19  3      OPC=xchgb_r8_r8    
  retq                     #  9     0x1c  1      OPC=retq           
                                                                    
.size target, .-target
