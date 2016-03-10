  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.target:                   #        0     0      OPC=<label>        
  callq .clear_cf          #  1     0     5      OPC=callq_label    
  callq .read_cf_into_rcx  #  2     0x5   5      OPC=callq_label    
  xchgw %ax, %cx           #  3     0xa   3      OPC=xchgw_r16_r16  
  cbtw                     #  4     0xd   2      OPC=cbtw           
  adcw %cx, %ax            #  5     0xf   3      OPC=adcw_r16_r16   
  xchgw %bx, %ax           #  6     0x12  3      OPC=xchgw_r16_r16  
  retq                     #  7     0x15  1      OPC=retq           
                                                                    
.size target, .-target
