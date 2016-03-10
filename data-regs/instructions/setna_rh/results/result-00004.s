  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.target:                   #        0     0      OPC=<label>        
  setc %r13b               #  1     0     4      OPC=setc_r8        
  setbe %ah                #  2     0x4   3      OPC=setbe_rh       
  shlb $0x1, %r13b         #  3     0x7   3      OPC=shlb_r8_one    
  callq .set_cf            #  4     0xa   5      OPC=callq_label    
  callq .read_zf_into_rbx  #  5     0xf   5      OPC=callq_label    
  adcq %rbx, %rbx          #  6     0x14  3      OPC=adcq_r64_r64   
  setno %al                #  7     0x17  3      OPC=setno_r8       
  xchgw %ax, %ax           #  8     0x1a  3      OPC=xchgw_r16_r16  
  retq                     #  9     0x1d  1      OPC=retq           
                                                                    
.size target, .-target
