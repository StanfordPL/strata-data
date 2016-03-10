  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP  Bytes  Opcode             
.target:                   #        0    0      OPC=<label>        
  callq .read_cf_into_rcx  #  1     0    5      OPC=callq_label    
  movzbl %bh, %edx         #  2     0x5  3      OPC=movzbl_r32_rh  
  xchgw %dx, %cx           #  3     0x8  3      OPC=xchgw_r16_r16  
  adcb %cl, %ah            #  4     0xb  2      OPC=adcb_rh_r8     
  retq                     #  5     0xd  1      OPC=retq           
                                                                   
.size target, .-target
