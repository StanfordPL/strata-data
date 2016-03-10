  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.target:                   #        0     0      OPC=<label>        
  xorb %ah, %bl            #  1     0     2      OPC=xorb_r8_rh     
  callq .read_cf_into_rcx  #  2     0x2   5      OPC=callq_label    
  xaddb %ch, %cl           #  3     0x7   3      OPC=xaddb_r8_rh    
  incb %bl                 #  4     0xa   2      OPC=incb_r8        
  xorq %rax, %rax          #  5     0xc   3      OPC=xorq_r64_r64   
  addb %bl, %ah            #  6     0xf   2      OPC=addb_rh_r8     
  xaddw %cx, %cx           #  7     0x11  4      OPC=xaddw_r16_r16  
  decw %ax                 #  8     0x15  3      OPC=decw_r16       
  rclb $0x1, %cl           #  9     0x18  2      OPC=rclb_r8_one    
  xorb %ah, %cl            #  10    0x1a  2      OPC=xorb_r8_rh     
  retq                     #  11    0x1c  1      OPC=retq           
                                                                    
.size target, .-target
