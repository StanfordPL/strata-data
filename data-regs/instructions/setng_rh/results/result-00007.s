  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode               
.target:                   #        0     0      OPC=<label>          
  callq .read_zf_into_rcx  #  1     0     5      OPC=callq_label      
  setz %r8b                #  2     0x5   4      OPC=setz_r8          
  setnge %ch               #  3     0x9   3      OPC=setnge_rh        
  seto %sil                #  4     0xc   4      OPC=seto_r8          
  popcntq %rcx, %r9        #  5     0x10  5      OPC=popcntq_r64_r64  
  adcb %sil, %r8b          #  6     0x15  3      OPC=adcb_r8_r8       
  adcw %r9w, %r9w          #  7     0x18  4      OPC=adcw_r16_r16     
  setne %ah                #  8     0x1c  3      OPC=setne_rh         
  retq                     #  9     0x1f  1      OPC=retq             
                                                                      
.size target, .-target
