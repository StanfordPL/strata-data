  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode            
.target:                   #        0     0      OPC=<label>       
  callq .read_zf_into_rbx  #  1     0     5      OPC=callq_label   
  callq .set_cf            #  2     0x5   5      OPC=callq_label   
  adcw %bx, %bx            #  3     0xa   3      OPC=adcw_r16_r16  
  shlb $0x1, %bl           #  4     0xd   2      OPC=shlb_r8_one   
  setnp %ah                #  5     0xf   3      OPC=setnp_rh      
  retq                     #  6     0x12  1      OPC=retq          
                                                                   
.size target, .-target
