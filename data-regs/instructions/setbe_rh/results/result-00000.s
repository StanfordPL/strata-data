  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode            
.target:                   #        0    0      OPC=<label>       
  callq .read_zf_into_rcx  #  1     0    5      OPC=callq_label   
  movw %cx, %r10w          #  2     0x5  4      OPC=movw_r16_r16  
  adcb %cl, %r10b          #  3     0x9  3      OPC=adcb_r8_r8    
  setnz %ah                #  4     0xc  3      OPC=setnz_rh      
  retq                     #  5     0xf  1      OPC=retq          
                                                                  
.size target, .-target
