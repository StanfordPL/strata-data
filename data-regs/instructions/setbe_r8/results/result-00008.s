  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.target:                   #        0     0      OPC=<label>        
  callq .read_zf_into_rbx  #  1     0     5      OPC=callq_label    
  decb %bl                 #  2     0x5   2      OPC=decb_r8        
  callq .read_zf_into_rcx  #  3     0x7   5      OPC=callq_label    
  adcq %rcx, %rbx          #  4     0xc   3      OPC=adcq_r64_r64   
  rclw $0x1, %cx           #  5     0xf   3      OPC=rclw_r16_one   
  xchgw %bx, %bx           #  6     0x12  3      OPC=xchgw_r16_r16  
  xaddb %bh, %cl           #  7     0x15  3      OPC=xaddb_r8_rh    
  setne %bl                #  8     0x18  3      OPC=setne_r8       
  retq                     #  9     0x1b  1      OPC=retq           
                                                                    
.size target, .-target
