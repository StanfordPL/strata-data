  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.target:                   #        0     0      OPC=<label>        
  callq .read_zf_into_rcx  #  1     0     5      OPC=callq_label    
  xchgw %cx, %cx           #  2     0x5   3      OPC=xchgw_r16_r16  
  callq .clear_cf          #  3     0x8   5      OPC=callq_label    
  adcw %cx, %cx            #  4     0xd   3      OPC=adcw_r16_r16   
  callq .read_zf_into_rbx  #  5     0x10  5      OPC=callq_label    
  retq                     #  6     0x15  1      OPC=retq           
                                                                    
.size target, .-target
